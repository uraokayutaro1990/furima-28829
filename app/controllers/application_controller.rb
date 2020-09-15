  class ApplicationController < ActionController::Base

    before_action :basic_auth
    #before_actionとは、コントローラーの全てのアクションが実行される前に何らかの処理を行う時に使用するものです。
    #BASIC認証  【 基本認証 】  basic authentication / ベーシック認証 / HTTP基本認証
    #BASIC認証とは、Webコンテンツの送受信などに用いられるプロトコル（通信規約）HTTP（Hypertext Transfer Protocol）の利用者認証の方式の一つで、最も単純で基本的なもの
    #何故入れるのか？・CSRF対策(クロスサイトリクエストフォージェリ)サイトに攻撃用のコードを仕込むことで、アクセスしたユーザーに対して意図しない操作を行わせる攻撃のことです。
    #自分の日記や掲示板に意図しない書き込みがされたりといった被害を受ける可能性がある。対策Appコントローラーとレイアウトに以下のコードを記載
    #exception 例外
  
    before_action :configure_permitted_parameters , if: :devise_controller?
    #9/10追記 袖岡さんに教えてもらった
    #before_action :authenticate_user!
    #9/11追記ログイン機能
    #9/12削除 ビフォーアクションする記述してしまうと全てのアクションが動く前にこのメソッドが実行されてしまう。

    private
    
    def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:family_name,:first_name,:family_name_kana,:first_name_kana,:birthday])
    end

    #export username ="BASIC_AUTH_USER" 誤りの回答
    #export password ="BASIC_AUTH_PASSWORD" 誤りの回答

    def basic_auth
      #認証 (auth)
      authenticate_or_request_with_http_basic do |username, password|
        #Ruby on RailsでBasic認証を実装するためのメソッドです。
        #ブロックを開き、ブロック内部でusernameとpasswordを設定することでBasic認証を利用できます。
        username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    #ENV["BASIC_AUTH_USER"]、ENV["BASIC_AUTH_PASSWORD"]と記述した場合、
    #USERとPASSWORDは環境変数としてローカルのzshrc、もしくはbash_profileに設定する必要がございます。メンターさんより
    #※ENVはEnvironment（環境）の略、[]の中は環境変数の左辺を入力します。 （1回目の記載）


#➡️下記の位置（2行,41,42行目）が疑問です。
#まずユーザー名とパスワードを定義してから、
#ベーシック認証をいっていくのか。
#もしくは上記の2点は、一番最後のendの前に記載するべきなのか。
#プログラミングは基本的に上から下に読んでいくと認識していて、
#ユーザー名とパスワードは、他のユーザーが登録する際にまた新たなものが代入されるため、
#最後に入れた方が良いと最終的に考えました。

    #下記の2行の定義する位置はここで問題ないのか
 
  #メンターさんから教えて頂いた記載方法
  #コード側ではENV["BASIC_AUTH_USER"]、ENV["BASIC_AUTH_PASSWORD"]と記載することで、環境変数の右辺の値が呼ばれ実際に動作するという流れです。
  #※ENVはEnvironment（環境）の略、[]の中は環境変数の左辺を入力します。（2回目の記載）
  #記載場所はどこでも良い



      end
    end
  end






