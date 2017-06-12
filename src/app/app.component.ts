import { Component } from '@angular/core';
import { Platform } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

import { Push, PushToken } from '@ionic/cloud-angular';
import { HomePage } from '../pages/home/home';
import { Http, HttpModule } from '@angular/http';

@Component({
  templateUrl: 'app.html',
  providers: [HttpModule]
})

export class MyApp {
  rootPage:any = HomePage;

  constructor(platform: Platform, statusBar: StatusBar, splashScreen: SplashScreen, public push: Push, http: Http) {
    platform.ready().then(() => {
      // Okay, so the platform is ready and our plugins are available.
      // Here you can do any higher level native things you might need.
      statusBar.styleDefault();
      splashScreen.hide();

      this.push.register().then((t: PushToken) => {
        return this.push.saveToken(t);
      }).then((t: PushToken) => {

        http.post('http://172.23.25.88:3000/api/v1/device', { registration: t.token })
        .subscribe(data => {
          console.log(data['_body']);
        }, error => {
          console.log(error);
        });

        console.log('Token saved:', t.token);
      });

      this.push.rx.notification()
      .subscribe((msg) => {
        console.log('I received awesome push: ' + msg);
      });

    });
  }
}

