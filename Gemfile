source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3', '~> 1.4'
gem 'mysql2', '>= 0.4.4'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'devise'
#9/8追加しました

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', require: false
  #9/4追記Rubyの静的コード解析ツール
end

group :development, :test do
  #gem 'rspec-rails', '~> 3.8' 削除する
  gem 'factory_bot_rails', '~> 5.0'
  gem 'rspec-rails', '~> 4.0.0'
  #9/9追記テストコードのため
  #9/10追記テストコード
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  #1つファクトリーボットのインストールのために、56行目は不明
  gem 'pry-rails'
  #現在のファイルに誤りがないか確認
  gem 'faker'
  #9/13インストールできておらず、テストコードを作成していた
  # gem 'active_hash'
  # #9/13 追記、active_hash_appの中で実行}
  gem 'mini_magick'
  gem 'image_processing', '~> 1.2'
  #9/14追記画像をいれるため
  gem 'payjp'
  #pay.jpインストール
  group :production do
  gem 'rails_12factor'
  end
  #デプロイするため
  

end


group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

  gem 'rspec-rails', '~> 4.0.0'
  #9/10

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'rails_12factor'
end
#9/5 作ったベーシック認証をデプロイするために、rails_12factorを導入
  gem 'active_hash'
#9/18 本番環境になかったため、再度アップ

