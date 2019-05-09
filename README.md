# amazon-books backend

amazon-books is a rails API, to display information from Amazon and Goodreads
For now all the information is generated localy for testing purposes also
due to the fact of the access needed for Amazon API


The installation process is quite simple once you clone the repository
making sure you have ruby, and rails intalled do the following


```
bundle install

rails db:create

rails db:migrate
```


To run this application localy simply do

```
rails s
```

also for running tests use 

```
rspec
```


# Endpoints

This api is composed by the following endpoints

```
GET
/genres
```

This endpoint will display all the book genres
sample response:

```
[
  {
    "id": 1,
    "name": "10th-century",
    "created_at": "2019-05-07T05:22:34.309Z",
    "updated_at": "2019-05-07T05:22:34.309Z"
  }
]
```
GET
/book/:id
```

This endpoint will display the book information
sample reponse:

```
{
  "id": 1,
  "genre_id": 873,
  "isbn": "029-98-3967",
  "average_rating": "15.0",
  "author": "Dr. Van Nikolaus",
  "binding": "binding",
  "manufacturer": "manufacturer",
  "number_of_items": "100.20302745916",
  "number_of_pages": "841.331690313728",
  "product_group": "book",
  "publication_date": "2019-01-06",
  "studio": "studio",
  "title": "The Monkey's Raincoat",
  "created_at": "2019-05-07T07:10:36.437Z",
  "updated_at": "2019-05-07T07:10:36.437Z"
}
```

```
GET
/books/isbn/:id
```
This endpoint will display the information of the book associated
to an ISBN id
sample reponse:

```
{
  "id": 29,
  "genre_id": 267,
  "isbn": "092-96-6613",
  "average_rating": "1.0",
  "author": "Mr. Israel Abernathy",
  "binding": "binding",
  "manufacturer": "manufacturer",
  "number_of_items": "108.179404216211",
  "number_of_pages": "227.394044818043",
  "product_group": "book",
  "publication_date": "2019-12-01",
  "studio": "studio",
  "title": "Waiting for the Barbarians",
  "created_at": "2019-05-07T07:10:36.537Z",
  "updated_at": "2019-05-07T07:10:36.537Z"
}
```

```
GET
/genres/:id/books
```
This endpoint will display the information of the books
related to a genre
sample reponse:

```
[
  {
    "id": 13,
    "genre_id": 2,
    "isbn": "254-87-0481",
    "average_rating": "19.0",
    "author": "Lesli Braun",
    "binding": "binding",
    "manufacturer": "manufacturer",
    "number_of_items": "104.237724628594",
    "number_of_pages": "480.27693837948",
    "product_group": "book",
    "publication_date": "2018-06-14",
    "studio": "studio",
    "title": "Sleep the Brave",
    "created_at": "2019-05-07T07:10:36.490Z",
    "updated_at": "2019-05-07T07:10:36.490Z"
  },
  {
    "id": 429,
    "genre_id": 2,
    "isbn": "749-02-5502",
    "average_rating": "46.0",
    "author": "Fidelia Kirlin",
    "binding": "binding",
    "manufacturer": "manufacturer",
    "number_of_items": "107.229556109279",
    "number_of_pages": "139.715214146764",
    "product_group": "book",
    "publication_date": "2018-05-21",
    "studio": "studio",
    "title": "Ah, Wilderness!",
    "created_at": "2019-05-07T07:10:38.379Z",
    "updated_at": "2019-05-07T07:10:38.379Z"
  }
]
```
