" Configure status line.
set statusline=%!MyStatusline()

function! s:sy_stats_wrapper()
    let [added, modified, removed] = sy#repo#get_stats()
    let symbols = ['+', '-', '~']
    let stats = [added, removed, modified]
    let statline = ''

    for i in range(3)
        if stats[i] > 0
            let statline .= printf('%s%s ', symbols[i], stats[i])
        endif
    endfor

    if !empty(statline)
        let statline = printf('[%s]', statline[:-2])
    endif

    return statline . ' '
endfunction

function! MyStatusline()
    let lpart = '%f ' . s:sy_stats_wrapper() . '%m'
    let rpart = '%=%l-%c%V %P'
    return lpart . rpart
endfunction
