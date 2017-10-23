class Patient < ApplicationRecord
    validates :_id, :uniqueness => true
    serialize :conditionsList, Array
    path = Rails.root.join('app', 'assets', 'javascripts', 'patient.json')
    patientFile = File.read(path)
    data = JSON.parse(patientFile)
    Patient.create( name: data['name'][0]['given'][0] + " " + data['name'][0]['family'][0],
    organization: data["managingOrganization"]['display'],
    gender: data['gender'],
    conditionsTotal: data['conditions'].length,
    conditionsList:  data['conditions'],
    _id: data['id'])
end
