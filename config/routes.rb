Rails.application.routes.draw do

  # make a route for making a GET request to /students
  get '/students', to: 'students#index'

  # make a route for making a GET request to /students/grades
  get '/students/grades', to: 'students#grades'

  # make a route for making a GET request to /students/highest-grades
  get '/students/highest_grade', to: 'students#highest_grade'

end
