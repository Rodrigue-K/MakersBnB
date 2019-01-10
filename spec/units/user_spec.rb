require 'user'

describe User do

  let(:user) { User.create(email: 'tom@tom.com', password: 'password1') }

  it 'check user exists' do
    expect(User.authenticate(user.email, 'password1')).to eq user
  end

end
