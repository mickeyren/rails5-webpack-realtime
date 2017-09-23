module Api
    class ActivitiesController < ApplicationController
      def index
        collection = Activity.all
        render json: collection,
               root: false,
               each_serializer: ActivitySerializer
      end
  
      def create
        activity = Activity.create(activity_params)
  
        if activity.persisted?
          render json: task,
            root: false,
            serializer: ActivitySerializer,
            status: :created
        else
          head :unprocessable_entity
        end
      end
    
      private
  
      def activity_params
        return {} unless params[:activity]
  
        params.require(:activity).permit(%i(duration notes))
      end
    end
  end
  