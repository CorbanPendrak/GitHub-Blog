FROM ruby:3.2
RUN gem install jekyll bundler
WORKDIR /srv/jekyll
COPY . .
RUN bundle install || true
EXPOSE 4000
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
# container run --rm -p 4000:4000 -v "$PWD":/srv/jekyll jekyll-site