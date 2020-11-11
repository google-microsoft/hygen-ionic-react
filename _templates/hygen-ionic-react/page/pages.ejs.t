---
to: src/page/<%= path %>/<%= pagename %>.tsx
---
import {IonContent, IonPage, withIonLifeCycle} from "@ionic/react";
import CommonHeader from "<%=headerComponent %>/common-header";
import React from "react";
import './<%= pagename %>.scss'

type Props = {}
class <%=h.changeCase.pascal(pagename) %>Page extends React.Component<Props, any> {

  async ionViewDidEnter() {
      console.log('page <%=h.changeCase.pascal(pagename) %> ionViewDidEnter');
  }
  render() {
    return (
      <IonPage>
        <CommonHeader title="<%=title %>" defaultUrl="<%=gobackdefaultUrl %>"/>
        <IonContent className="<%=pagename %>">
        </IonContent>
      </IonPage>
    );
  }
}

export default withIonLifeCycle(<%=h.changeCase.pascal(pagename) %>Page);
