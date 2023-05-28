#include <QObject>

class Param: public QObject{
    Q_OBJECT
    Q_PROPERTY(bool isDriving READ isDriving WRITE setIsDriving NOTIFY isDrivingChanged)
    public:
        bool isDriving() {return m_isDriving;}
        void setIsDriving(bool newIsDriving){
            if (m_isDriving == newIsDriving) return;
            m_isDriving = newIsDriving;
            emit isDrivingChanged();
        }
    signals:
        void isDrivingChanged();
    private: 
       bool m_isDriving = false; 
};
