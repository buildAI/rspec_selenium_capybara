feature "Forgot Password" do
    scenario "Trigger forgot password" do
        visit "/forgot_password"
        within("#forgot_password") do
            fill_in 'E-mail', with: 'user@example.com'
        end
        expect(page).to have_button 'Retrieve password'
    end
end