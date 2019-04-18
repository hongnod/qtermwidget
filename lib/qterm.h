#pragma once

#include <QtWidgets/QMainWindow>
#include "ui_qterm.h"

class QTerm : public QMainWindow
{
	Q_OBJECT

public:
    QTerm(QWidget *parent = Q_NULLPTR);
private:
#ifndef QT_NO_CONTEXTMENU
    virtual void contextMenuEvent(QContextMenuEvent *event);
#endif // QT_NO_CONTEXTMENU
private:
    Ui::QTermClass ui;
};
