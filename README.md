# Litchartster

Sample project featuring ajax CRUD for adding highlights and
notes for literary texts.

### Prerequisites

Postgresql
Ruby -v 2.x.x

### Deployment

```
heroku create
git push heroku master
heroku run rake db:setup
```

Login with credentials 'test@user.com', 'password'

### Todo
- add tests
- add caching
- experiment with [tocca.js](https://gianlucaguarini.com/Tocca.js/) to improve mobile touch events
