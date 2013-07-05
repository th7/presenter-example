# Cleaning up a mess with Presenters

You're task is to replace the gnarly `app/views/posts/index.html.erb` template with a `PostPresenter` (placed in `app/presenters`) and a new Mustache template `app/views/posts/_post.html.mustache`.

Remember, your presenter will be a plain ol' Ruby class. Use method_missing to delegate any missing method calls to the `post` object the presenter wraps. There are other options to acheive this delegation in Ruby, the Forwardable and Delege modules are to examples. Try method_missing first though.

When you're done you should have a simple Mustache template and a well ___TESTED__ (rspec) PostPresenter.

Send me a pull request and I'll review your code.
