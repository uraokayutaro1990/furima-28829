require 'rails_helper'
describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "nicknameとemail、passwordとencrypted_password、family_name、first_name、family_name_kana、first_name_kana、birthdayが存在すれば登録できる" do
        expect(@user).to be_valid
      end

      it "passwordが6文字以下で登録できる" do
        @user.encrypted_password = "aaaaaa"
        expect(@user).to be_valid        
      end

      it "passwordに半角英数" do
        @user.encrypted_password = "aaa000"
        expect(@user).to be_valid
      end
      #仮で入れておく

      it "passwordに半角英数" do
        @user.encrypted_password = /\A[a-zA-Z0-9]+\z/
        expect(@user).to be_valid
      end

      it "passwordを確認する方法" do
        @user.encrypted_password = /\A[a-zA-Z0-9]+\z/
        expect(@user).to be_valid
        binding.pry
      end
      #いったん同じコードを2回記述する方法で確かめる
    
    


    context '新規登録がうまくいかないとき' do
      it "nicknameが空だと登録できない" do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "nicknameが7文字以上であれば登録できない" do
        @user.nickname = "aaaaaaa"
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname is too long (maximum is 6 characters)")
      end
      it "emailが空では登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it "重複したemailが存在する場合登録できない" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end
      it "passwordが空では登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it "passwordが5文字以下であれば登録できない" do
      end
      it "passwordが存在してもpassword_confirmationが空では登録できない" do
      end
    end
  end
end