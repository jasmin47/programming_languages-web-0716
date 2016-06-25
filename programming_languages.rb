def languages
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
end


def reformat_languages(languages)
new_hash = {}
  languages.each {|language_model, languages_list|
    new_hash.merge!(languages_list)
  }
  new_hash.each {|language, attributes|
    new_hash[language] = attributes.merge!(style: [])
  }
  languages.each {|language_model, languages_list|
    languages_list.each {|language, attributes|
      new_hash.each {|language_new, attributes_new|
        if language == language_new 
          new_hash[language][:style] << language_model

        end} }}
new_hash 
end


