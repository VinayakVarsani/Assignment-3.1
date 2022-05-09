json.extract! patient, :id, :pateint_id, :name, :email, :created_at, :updated_at
json.url patient_url(patient, format: :json)
