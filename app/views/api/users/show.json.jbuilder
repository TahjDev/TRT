json.extract! @user, :id, :email, :username, :password

json.photoUrl @user.photo.attached? ? url_for(@user.photo) : nil