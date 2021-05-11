function(threshold, text, size=false, color=false, mark=false) {
  threshold: threshold,
  text: (if mark != false then '<mark=' + mark + '>' else '') +
        (if color != false then '<#' + color + '>' else '') +
        (if size != false then '<size=' + size + '%>' else '') +
        text +
        (if size != false then '</size>' else '') +
        (if color != false then '</color>' else '') +
        (if mark != false then '</mark>' else ''),
}
