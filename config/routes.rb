Rails.application.routes.draw do

  get 'sessions/new'

# Static_page routes
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

  # User routes
    get 'users' => 'users#index'
    get 'users/new' => 'users#new', as: "new_user"
    get 'users/:id' => 'users#show', as: "user"
    get 'signup' => 'users#new'
    post 'users' => 'users#create'
    get 'users/:id/edit' => 'users#edit', as: "edit"
    patch 'users/:id/' => 'users#update'
    delete 'users/:id' => 'users#destroy'


# Student routes
  resources :students


# Sessions routes
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # Question routes
  get   'questions' => 'questions#index'
  post  'questions' => 'questions#create'
  get   'questions/new' => 'questions#new' , as: 'new_question'
  get   'questions/selected_answers' => 'questions#selected_answers'
  get   'questions/:id/edit' => 'questions#edit', as: 'edit_question'
  get   'questions/:id' => 'questions#show', as: 'question'
  put   'questions/:id/' => 'questions#update'
  patch 'questions/:id/' => 'questions#update'
  delete 'questions/:id' => 'questions#destroy', as: 'destroy'

  # Quiz routes
  get   'quizzes' => 'quizzes#index'
  post  'quizzes' => 'quizzes#create'
  get   'quizzes/new' => 'quizzes#new' , as: 'new_quiz'
  get   'quizzes/selected_questions' => 'quizzes#selected_questions'
  get   'quizzes/:id/edit' => 'quizzes#edit', as: 'edit_quiz'
  get   'quizzes/:id' => 'quizzes#show', as: 'quiz'
  put   'quizzes/:id/' => 'quizzes#update'
  patch 'quizzes/:id/' => 'quizzes#update'
  delete 'quizzes/:id' => 'quizzes#destroy'

  # Answer routes
  get   'answers' => 'answers#index'
  post  'answers' => 'answers#create'
  get   'answers/new' => 'answers#new' , as: 'new_answer'
  get   'answers/:id/edit' => 'answers#edit', as: 'edit_answer'
  get   'answers/:id' => 'answers#show', as: 'answer'
  put   'answers/:id/' => 'answers#update'
  patch 'answers/:id/' => 'answers#update'
  delete 'answers/:id' => 'answers#destroy', as: 'destroy_answer'
end
