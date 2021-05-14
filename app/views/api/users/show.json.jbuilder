json.extract! @user, :id, :email, :username, :password
json.photoUrl url_for(@user.photo)