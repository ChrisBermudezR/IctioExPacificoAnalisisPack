#' Title
#'
#' @param datos
#' @param variable
#' @param y_etiqueta
#'
#' @return
#' @export
#'
#' @examples
boxplot_transecto<-function(datos,variable, y_etiqueta){
  ggplot(data=datos, aes(x=Transecto, y=variable, color=Marea)) +
    geom_boxplot()+
    stat_summary(fun=mean, aes(y = variable, group=Marea), geom="point", shape=20, size=3, color="blue", position = position_dodge(width = 0.8)) +
    labs( y = y_etiqueta, x = "Transecto")+
    theme_classic()+
    geom_point(position = position_jitterdodge())
}
