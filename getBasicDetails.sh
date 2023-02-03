current_date="$(date "+Date(y-m-d): %Y-%m-%d%n")"
current_time="$(date "+Time(h:m:s): %H:%M:%S")"
current_user="User : $(whoami)"
home_directory=$(echo $HOME)
current_directory="current working directory : $(pwd)"


echo "$current_date"
echo "$current_time"
echo "$current_user"
echo "home directory : $home_directory"
echo "$current_directory"

