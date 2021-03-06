class UserMailer < ActionMailer::Base
  default :from => "iitkgpmun@gmail.com"

  def confirmation_email(executive_board)
    @executive_board = executive_board
    @url = "http://iitkgpmun.springfest.in"
    mail(:to => executive_board.user.email, :subject => " Thank you for registering as #{executive_board.user.resource_type}", :from => "IITKGPMUN <ebreg.iitkgpmun@gmail.com>")
  end

  def eb_registration_email(executive_board)
    @executive_board = executive_board  # ebreg.iitkgpmun@gmail.com
    mail(:to => "ebreg.iitkgpmun@gmail.com", :subject => " Details after registering of #{executive_board.user.full_name} (#{executive_board.user.email}) ")
  end

  def eb_updation_email(executive_board)
    @executive_board = executive_board
    mail(:to => "ebreg.iitkgpmun@gmail.com", :subject => " Details after updation of #{executive_board.user.full_name} (#{executive_board.user.email}) ")
  end
  
  def d_registration_email(delegate)
    @delegate = delegate  # ebreg.iitkgpmun@gmail.com
    mail(:to => "delegate.iitkgpmun@gmail.com", :subject => " Details after registering of #{delegate.user.full_name} (#{delegate.user.email}) ")
  end
  def d_updation_email(delegate)
    @delegate = delegate  # ebreg.iitkgpmun@gmail.com
    mail(:to => "delegate.iitkgpmun@gmail.com", :subject => " Details after updation of #{delegate.user.full_name} (#{delegate.user.email}) ")
  end

  def ip_registration_email(international_press)
    @international_press = international_press  # ebreg.iitkgpmun@gmail.com
    mail(:to => "ip.iitkgpmun@gmail.com", :subject => " Details after registering of #{international_press.user.full_name} (#{international_press.user.email}) ")
  end

  def ip_updation_email(international_press)
    @international_press = international_press
    mail(:to => "ip.iitkgpmun@gmail.com", :subject => " Details after updation of #{international_press.user.full_name} (#{international_press.user.email}) ")
  end
  

  def ip_confirmation_email(international_press)
    @international_press = international_press
    @url = "http://iitkgpmun.springfest.in"
    mail(:to => international_press.user.email, :subject => " Thank you for registering as International Press", :from => "IITKGPMUN <ip.iitkgpmun@gmail.com>")
  end


end
