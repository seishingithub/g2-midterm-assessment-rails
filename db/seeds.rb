Post.destroy_all
User.destroy_all

user = User.create!(
  name: "Some User",
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password'
)

other_user = User.create!(
  name: "Other User",
  email: 'other@example.com',
  password: 'password',
  password_confirmation: 'password'
)

Post.create!(user: user, body: "Digging into some clojure.  Learning to love the parenthesis.")
Post.create!(user: other_user, body: "Writing some javascript...\n\n and loving 'this'.")
