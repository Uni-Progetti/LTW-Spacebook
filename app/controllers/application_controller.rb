class ApplicationController < ActionController::Base
    helper_method :require_department

    # rescue_from SQLite3::ConstraintException do |exception|                                          # Reindirizza alla pagina corrente se i dati inseriti non rispettano i vincoli sul database
    #     redirect_back(fallback_location: root_path)                                                  # in caso di errore di path reindirizza alla home
    #     flash[:alert] = 'Questi dati sono gia stati inseriti. In particolare: '+exception.message+'' # Mostra messagio di errore
    # end

    def require_department
        redirect_to '/make_department'                                                                                                                # Reindirizza alla pagina di creazione del dipartimento
        flash[:alert] = "Attenzione: Avendo effettuato la registrazione come manager devi registrare il tuo dipartimento per poter accedere al sito!" # Mostra messagio di spiegazione
    end

end
