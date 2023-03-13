# URL schemes

The URL scheme is `wikipedia://`. The following URLs are currently handled:

| Feature            | Format                                   | Example                                  |
| ------------------ | ---------------------------------------- | ---------------------------------------- |
| Article            | wikipedia://[site]/wiki/[page_id]        | wikipedia://en.wikipedia.org/wiki/Red    |
|                    | https://[[site]/wiki/[page_id]           | https://en.wikipedia.org/wiki/Red        |
| Content            | wikipedia://content                      |                                          |
| Explore            | wikipedia://explore                      |                                          |
| History            | wikipedia://history                      |                                          |
| Places             | wikipedia://places                       |                                          |
|                    | wikipedia://places?WMFArticleURL=[url]   |wikipedia://places?WMFArticleURL=https://en.m.wikipedia.org/wiki/Union_Square,_San_Francisco|
|                    | wikipedia://places?lat=[latitude]&long=[longitude][&title=[title]]|wikipedia://places?lat=52.3547498&long=4.8339215&title=Amsterdam<br />wikipedia://places?lat=40.4380638&long=-3.7495758|
| Saved pages        | wikipedia://saved                        |                                          |
| Search             | wikipedia://[site]/w/index.php?search=[query] | wikipedia://en.wikipedia.org/w/index.php?search=dog |
