Rails.application.routes.draw do
  get 'ask', to: 'questions#ask'
  get 'answer', to: 'questions#answer'

  # Generic syntax:
  # verb 'path', to: 'controller#action'
end
