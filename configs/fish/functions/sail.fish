function sail --description 'Laravel Sail helper'
    if test -f sail
        sh sail $argv
    else
        sh vendor/bin/sail $argv
    end
end
