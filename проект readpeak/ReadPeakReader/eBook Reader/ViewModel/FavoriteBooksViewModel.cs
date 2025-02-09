﻿using eBook_Reader.Commands;
using eBook_Reader.Commands.ManageLibrary;
using eBook_Reader.Commands.NavigationCommands;
using eBook_Reader.Model;
using eBook_Reader.Stores;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Input;
using System.Xml.Linq;

namespace eBook_Reader.ViewModel {
    public class FavoriteBooksViewModel : BooksViewModel {

        /*******************************************
         
         Class: AllBooksViewModel

         Layer between 'FavoriteBooksView' and 'Model'.
         Class provides filtered book collection to 
         FavoriteBooksView.
         
         *******************************************/

        private static Book? m_selectedBook;
        private Book? m_lastOpenedBook;
        private String? m_continueReadingVisibility;
        private MenuNavigationStore m_menuNavigationStore;
        private readonly NavigationStore m_navigationStore;
        private AllBooksViewModel m_allBooksViewModel;
        private new SortParameter? m_selectedSortParameter;
        private new ObservableCollection<SortParameter>? m_sortParameters;
        private String? m_search;
        private ICollectionView m_bookListView;

        public ObservableCollection<Book> FavoriteBooks {
            // Gets value from base class directly.
            get => base.m_bookList!;
        }
        public Book SelectedBook {
            get { return m_selectedBook!; }
            set {
                if(value != null) {
                    m_selectedBook = value;
                }
                OnPropertyChanged("SlectedBook");
            }
        }
        public Book? LastOpenedBook {
            get => m_lastOpenedBook;
            set {
                m_lastOpenedBook = value;
                OnPropertyChanged("LastOpenedBook");
            }
        }
        public String ContinueReadingVisibility {
            get => m_continueReadingVisibility!;
            set {
                m_continueReadingVisibility = value;
                OnPropertyChanged("ContinueReadingVisibility");
            }
        }
        public new SortParameter SelectedSortParameter {
            get => m_selectedSortParameter!;
            set {
                m_selectedSortParameter = value;
                base.SelectedSortParameter = value;
                OnPropertyChanged("SelectedSortParameter");
            }
        }
        public new ObservableCollection<SortParameter> SortParameters {
            get => m_sortParameters!;
            set {
                m_sortParameters = value;
                OnPropertyChanged("SortParameters");
            }
        }
        public String Search {
            get { return m_search!; }
            set {
                if(value != m_search) {
                    m_search = value;
                    m_bookListView.Refresh();
                    OnPropertyChanged("Search");
                }
            }
        }

        public ICommand AddEpubBookCommand { get; protected set; }
        public ICommand DeleteBookCommand { get; protected set; }
        public ICommand NavigateReadBookCommand { get; protected set; }
        public ICommand SortCommand { get; protected set; }
        public ICommand RemoveFavoriteMarkCommand { get; protected set; }

        public FavoriteBooksViewModel(MenuNavigationStore menuNavigationStore,
                                      NavigationStore navigationStore,
                                      AllBooksViewModel allBooksViewModel) {
            
            base.m_bookList = new ObservableCollection<Book>();
            m_bookListView = CollectionViewSource.GetDefaultView(base.m_bookList);
            m_bookListView.Filter = o => String.IsNullOrEmpty(Search) ? true : ((String) ((Book) o).Title.ToLower()).Contains(Search.ToLower());
            
            m_menuNavigationStore = menuNavigationStore;
            m_navigationStore = navigationStore;
            m_allBooksViewModel = allBooksViewModel;

            LastOpenedBook = GetLastOpenedBook();

            SortParameters = base.SortParameters;

            // Initialize favorite books collection.
            base.m_bookList = new ObservableCollection<Book>(GetFavoriteList());
            SelectedSortParameter = SortParameters[0];

            NavigateReadBookCommand = new NavigateReadBookCommand(m_navigationStore, m_menuNavigationStore, m_allBooksViewModel);
            AddEpubBookCommand = new AddBookCommand(m_allBooksViewModel);
            DeleteBookCommand = new DeleteBookCommand(m_allBooksViewModel);
            SortCommand = new SortCommand<BooksViewModel>(this);
            RemoveFavoriteMarkCommand = new RemoveFavoriteMarkCommand(m_allBooksViewModel, this);
        }

        // Method for 'AllBooksViewModel.BookList' filtering by isFavorite mark.
        // Returns collection of books, which marked as 'true' (favorite).
        private IEnumerable<Book> GetFavoriteList() {

            XElement xElement = XElement.Load(Path.Combine(Environment.CurrentDirectory, "BookList.xml"));

            var books = from Xbook in xElement.DescendantsAndSelf("book")
                        from book in m_allBooksViewModel.BookList
                        where (Xbook.Attribute("Name")?.Value.Replace('\\', '/') == book.BookPath.Replace("\\", "/"))
                              && (Xbook.Attribute("IsFavorite")?.Value == "true")
                        select book;

            foreach(var book in m_allBooksViewModel.BookList) {
                foreach(var favoriteBook in books) {
                    if(book == favoriteBook)
                        favoriteBook.IsFavorite = true;
                } 
            }

            return books.OrderBy(book => book.Title);
        }

        // Method returns instance of last opened book.
        // We do it by comparing 'LastOpeningTime' attribute of 'book' elements and return recently closed book.
        private Book? GetLastOpenedBook() {

            ContinueReadingVisibility = "Hidden";
            XElement xElement = XElement.Load(System.IO.Path.Combine(Environment.CurrentDirectory, "BookList.xml"));

            String newestTime = new DateTime(1, 1, 1, 1, 1, 1).ToString();
            Book? lastOpenedBook = m_allBooksViewModel.BookList.FirstOrDefault();

            foreach(var xBook in xElement.DescendantsAndSelf("book")) {

                GetRecentlyOpenedBook(xBook, ref newestTime, ref lastOpenedBook);
            }

            return lastOpenedBook;
        }

        // Here we could compare values of attributes we alluded earlier.
        private void GetRecentlyOpenedBook(XElement xBook, ref String newestTime, ref Book? lastOpenedBook) {

            if(DateTime.Parse(xBook.Attribute("LastOpeningTime")?.Value ?? new DateTime(1, 1, 1, 1, 1, 1).ToString()) > DateTime.Parse(newestTime)) {

                newestTime = xBook.Attribute("LastOpeningTime")?.Value ?? new DateTime(1, 1, 1, 1, 1, 1).ToString();

                foreach(var book in m_allBooksViewModel.BookList) {

                    if(xBook.Attribute("Name")?.Value.Replace('\\', '/') == book.BookPath.Replace("\\", "/")) {

                        ContinueReadingVisibility = "Visible";
                        lastOpenedBook = book;
                    }
                }
            }
        }
    }
}