function(threshold, text, size=false, color=false) {
  threshold: threshold,
  text: (if color != false then '<#' + color + '>' else '') +
        (if size != false then '<size=' + size + '%>' else '') +
        text +
        (if size != false then '</size>' else '') +
        (if color != false then '</color>' else ''),
}
