Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, 'ac65e096162de3d85efc', 'c7fa0d81bdbd6e15856eb260438090205ebe07f2'
end