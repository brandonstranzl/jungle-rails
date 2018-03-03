class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_confirmation_email(order)
    @order = order
    @order_id = order.id
    @user = order.email
    @url  = 'http://localhost:3000'
    mail(to: @user, subject: "Order #{@order_id} with jungle.com has been received")
  end
end
