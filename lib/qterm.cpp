#include "qterm.h"
#include "qbsterminal.h"

#include <QResizeEvent>

QTerm::QTerm(QWidget *parent)
    : QMainWindow(parent)
{
    ui.setupUi(this);
}

void QTerm::contextMenuEvent(QContextMenuEvent *event)
{
    QMainWindow::contextMenuEvent(event);
}
