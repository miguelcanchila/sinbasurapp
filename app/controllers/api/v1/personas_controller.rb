module Api
	module V1
		class PersonasController < ApplicationController
				def index
					personas = Persona.order('created_at DESC');
					render json: {status: 'SUCCESS', message:'Loaded personas', data:personas},status: :ok
		    	end
		    	#Mostar fila por ID
		   		def show
		    		persona = Persona.find(params[:id])
		    		render json: {status: 'SUCCESS', message:'Loaded persona', data:persona},status: :ok
		    	end
		    	#Crear Persona
		    	def create
		    		persona = Persona.new(persona_params)
		    		
		    			if persona.save
		    			render json: {status: 'SUCCESS', message:'Saved persona', data:persona},status: :ok
		   		 			else
		   		 			render json: {status: 'ERROR', message:'Persona not Saved', data:persona.errors},status: :unprocessable_entity
		   		 			end
		   		end
		   		 #Eliminar Persona
		    	def destroy
		    		persona = Persona.find(params[:id])
		    		persona.destroy
		    		render json: {status: 'SUCCESS', message:'Deleted persona', data:persona},status: :ok
		    	end
		    	 #Actualizar Persona
		    	def update
		    		persona = Persona.find(params[:id])
		    			if persona.update_attributes(persona_params)
		    				render json: {status: 'SUCCESS', message:'update persona', data:persona},status: :ok
		    				else
		    					render json: {status: 'ERROR', message:'Persona not updated', data:persona.errors},status: :unprocessable_entity
		    				end
		    	end
		    	 # Declarar Variable para los parametros de la persona
		    	private
		    	def persona_params 
		    		params.permit(:TipoPersona, :TipoDocumentoId, :NumeroIdentificacion, :Nombre, :Apellido, :Correo, :Telefono, :Direccion)
		   		end
		end
	end
end