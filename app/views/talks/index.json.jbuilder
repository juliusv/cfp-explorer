json.array!(@talks) do |talk|
  json.extract! talk, :id, :speaker_name, :speaker_email, :speaker_twitter, :speaker_company, :speaker_biography, :talk_title, :talk_abstract, :talk_duration, :notes
  json.url talk_url(talk, format: :json)
end
