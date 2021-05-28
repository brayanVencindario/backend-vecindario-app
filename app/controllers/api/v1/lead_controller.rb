class Api::V1::LeadController < ApplicationController


    def create
        lead = Lead.create(lead_params)
       
        if lead.valid?

          render json: {status: :ok, message: 'lead creado correctamente' }
        else
          render json: {message: "ocurrio un error porfavor intente de nuevo", status: :error}
        end
      end


      

    def leadsProject
        leadProject = Lead.where(proyect_id: params[:proyect_id])
      

        if leadProject.empty?

            render json: {message: leadProject, status: :error}
        else
            render json: {data: leadProject, projectCounts:leadProject.count, status: :ok}
      
        end

      end

      def lead_params
        params.permit(:name, :last_name,:email,:phone, :proyect_id )
      end

    

end
