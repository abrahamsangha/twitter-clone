require 'rails_helper'
RSpec.describe User, type: :model do
  let(:valid_params) {{
    first_name: 'Clubber',
    last_name: 'Lang',
    email: 'clang@aol.com',
    handle: 'clang',
    password: 'password1234',
    password_confirmation: 'password1234'
  }}
  describe '.create' do
    context 'with valid params' do
      it 'is successful' do
        expect{ User.create(valid_params) }.not_to raise_error
      end
    end
  end
end
