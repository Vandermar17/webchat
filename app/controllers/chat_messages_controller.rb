class ChatMessagesController < ApplicationController
    before_action :set_chat_message, only: [:show, :edit, :update, :destroy]
    before_action :set_chat
  
    # GET /chat_messages
    # GET /chat_messages.json
    def index
      @chat_messages = ChatMessage.all
    end
  
    # GET /chat_messages/1
    # GET /chat_messages/1.json
    def show
    end
  
    # GET /chat_messages/new
    def new
      @chat_message = ChatMessage.new
    end
  
    # GET /chat_messages/1/edit
    def edit
    end
  
    # POST /chat_messages
    # POST /chat_messages.json
    def create
      #pars = chat_message_params[user_login : current_user.login]
      @chat_message = ChatMessage.new(chat_message_params)
  
      respond_to do |format|
        if @chat_message.save
          format.html { redirect_to user_chat_path(current_user, @chat) }
          format.json { render :show, status: :created, location: @chat_message }
        else
          format.html { render :new }
          format.json { render json: @chat_message.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /chat_messages/1
    # PATCH/PUT /chat_messages/1.json
    def update
      respond_to do |format|
        if @chat_message.update(chat_message_params)
          format.html { redirect_to @chat_message, notice: 'Chat message was successfully updated.' }
          format.json { render :show, status: :ok, location: @chat_message }
        else
          format.html { render :edit }
          format.json { render json: @chat_message.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /chat_messages/1
    # DELETE /chat_messages/1.json
    def destroy
      @chat_message.destroy
      respond_to do |format|
        format.html { redirect_to chat_messages_url, notice: 'Chat message was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_chat_message
        @chat_message = ChatMessage.find(params[:id])
      end
  
      def set_chat
        @chat = Chat.find(params[:chat_id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def chat_message_params
        params.require(:chat_messages).permit(:chat_id, :message, :user_login)
      end
  end
  