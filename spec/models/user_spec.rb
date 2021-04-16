# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new(username: 'Juan', email: 'juan@mail.com', password: '123456') }

  describe 'Validations' do
    it { should validate_length_of(:username).is_at_most(20) }

    it { should_not allow_value('').for(:username) }

    long_name = (0..20).map { ('a'..'z').to_a[rand(26)] }.join
    it { should_not allow_value(long_name).for(:username) }

    it { should allow_value(user.username).for(:username) }

    it { should validate_presence_of(:email) }

    email = (0...30).map { ('a'..'z').to_a[rand(26)] }.join
    it { should_not allow_value(email).for(:email) }

    it { should allow_value(user.email).for(:email) }

    it { should validate_uniqueness_of(:email).case_insensitive }

    it { should validate_presence_of(:password) }

    password = (0...5).map { ('a'..'z').to_a[rand(26)] }.join
    it { should_not allow_value(password).for(:password) }

    it { should_not allow_value('').for(:password) }

    it { should allow_value(user.password).for(:password) }
  end
end
