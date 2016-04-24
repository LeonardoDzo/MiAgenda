json.array!(@asignatures) do |asignature|
  json.extract! asignature, :id, :tittle, :semester
  json.url asignature_url(asignature, format: :json)
end
