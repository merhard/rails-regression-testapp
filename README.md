To run the tests:
- `git clone git@github.com:merhard/rails-regression-testapp.git`
- `cd rails-regression-testapp`
- `bin/setup`
- `bin/rake test`

To see the regression in a browser at `http://localhost:3000/sub_uri`:
- `bin/rails s`

If the Rails version is changed from v4.2.3 to v4.2.2, the test passes and the regression is not seen in the view.
