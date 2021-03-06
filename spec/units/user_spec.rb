require 'user'

describe User do
  let!(:user) { User.create(email: 'test@test.com', password: 'secret123') }

  describe '#authenticate' do
    it "returns nil if user doesn't exist" do
      expect(User.authenticate('wrong@email.com', 'wrongpassword')).to eq nil
    end

    it "returns nil if wrong password" do
      expect(User.authenticate('test@test.com', 'wrongpassword')).to eq nil
    end

    it 'returns the user if user exists and password is correct' do
      expect(User.authenticate('test@test.com', 'secret123')).to eq user
    end
  end
end
