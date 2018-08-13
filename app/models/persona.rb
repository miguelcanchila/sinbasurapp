class Persona < ApplicationRecord
	  validates :TipoPersona, presence: true
      validates :TipoDocumentoId, presence: true
      validates :NumeroIdentificacion, presence: true
      validates :Nombre, presence: true
      validates :Apellido, presence: true
      validates :Correo, presence: true
      validates :Telefono, presence: true
      validates :Direccion, presence: true
end
