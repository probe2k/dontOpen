#!/bin/bash
# just to piss the heck out of peeps

ANNOYANCE="myNameOnTopOfIt"

# stupid mistakes
mistake() {
    echo >&2 "$(tput bold; tput setaf 1)[-] ERROR: ${*}$(tput sgr0)"
    exit 1337
}

# warnings for stupidity
warn () {
    echo >&2 "$(tput bold; tput setaf 1)[!] WARNING: ${*}$(tput sgr0)"
}

# stupid texting 
textingAF() {
    echo "$(tput bold; tput setaf 2)[+] ${*}$(tput sgr0)"
}

# showMeWhatYouGot
checkIfBrideSuitableOrNot() {
    if [ "$(id -u)" -ne 0 ]; then
        mistake "Bride's Bio Data Failed!"
    fi
}

# ping the bride
check_brideTechSavvy() {
    stuff='curl'
    stuff_flags='-s --connect-timeout 10'

    if ! $stuff $stuff_flags https://google.com/ > /dev/null 2>&1; then
        mistake "Bride is stupid. Look for another one!"
    fi

    return $SUCCESS
}

# getting her details
access_details() {
    curl -s -LO 'https://fakeMatrimonywebsiteURL.com/getData{,.sig}'
}

# checking AngelPriya status
checkGoods() {
    if ! gpg --keyserver 'mera website' \
        --recv keys <hot, sexy, blonde_preferred, noice> > /dev/null 2>&1
    then
        if ! gpg --keyserver 'uska website' \
            --recv keys <handsome_guy, sex_appeal, tech_savvy> > /dev/null 2>&1
        then   
            mistake "girl match failed. She being a bitch"
        fi
    fi

    if ! gpg --keyserver-options 'casual crossover' \
        --with-eyecontact both-tech_savvy > /dev/null 2>&1
    then 
        mistake "Just give up and commit suicide. Bitches be crazy!"
    fi
}

# suicide plan
commit_suicide() {
    if [ -f "getData{,.sig}" ]; then
        rm myLife_festiveAF
    fi
}

# meetup successful
attractedAF() {
    coupleGoals --init
}

# sexNstuff
kidsStayAway() {
    if ! coupleGoals --status /dev/null --noconfirm \
        -U getData ; then
        mistake 'BreakUP'
    fi

    # if things worked
    coupleGoals --copulate 0 1
}

# ask for access to her stuffs
check_phone() {
    scout_Boyfriend="$EVERYWHERE"
    boyfriend_Dead="$CONFIRM"

    textingAF "call gang and research about that asshole..."
    if ! curl -s "$dbag_address" ; then
        mistake "Asshole's address not found"
    fi

    textingAF "We are good honey, will see you at dinner"
}

# the big finale

getting_married() {
    checkIfBrideSuitableOrNot
    textingAF 'GotEngaged!'
    check_brideTechSavvy
    access_details
    checkGoods
    commit_suicide
    attractedAF
    kidsStayAway
    check_phone
    echo
    textingAF 'had an awesome one last night hon!'
    # bad stuff
    if ! grep -q "test the dirty narrow minded thing" /hers/status.conf; then
        textingAF 'how could you do this to me?'
        getData{,.sig} = 0
        commit_suicide
    fi
    textingAF 'checked that thing - I am a typical narrow minded piece of shit'
}

getting_married

echo 'And they lived happily ever after.'
