Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '8dSavRskKSNDihIMitSjDqqje', 'FoI2H6Hw2n2Zc8pakJpFSSGTvVoPVGiSPbZ61nHZin6CFIiKXm'
  provider :facebook, '1795559787367782', 'df1f3b668c80285e7dd073c2bf3335fe' 
  provider :github, '4b45b8b97094d9dceb99', '17d4b79b7a599c4fb29153c08a30c5b59721da8c'
end