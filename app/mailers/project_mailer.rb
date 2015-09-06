class ProjectMailer < ActionMailer::Base

	def project_created(user)

		mail(to: "#{user.email}",
			from: "nobbble1@gmail.com",
			subject: "Project Proposal #{user.email}"
		)
	end

end
