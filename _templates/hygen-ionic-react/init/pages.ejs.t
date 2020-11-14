---
to: src/pages/<%= path %>/<%= name %>-page.tsx
---
import {IonContent, IonPage, withIonLifeCycle} from "@ionic/react";
import CommonHeader from "./common-header";
import React from "react";
import './<%= name %>-page.scss'

type Props = {}
class <%=h.changeCase.pascal(name) %>Page extends React.Component<Props, any> {

  async ionViewDidEnter() {
      console.log('page <%=h.changeCase.pascal(name) %> ionViewDidEnter');
  }
  render() {
    return (
      <IonPage>
        <CommonHeader title="<%=title %>" defaultUrl="<%=gobackdefaultUrl %>"/>
        <IonContent className="<%=name %>-page">
        </IonContent>
      </IonPage>
    );
  }
}

export default withIonLifeCycle(<%=h.changeCase.pascal(name) %>Page);
