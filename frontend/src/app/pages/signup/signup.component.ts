import {Component, OnInit} from '@angular/core';
import {Location} from '@angular/common';
import {User} from "../../models/User";
import {UserService} from "../../services/user.service";
import {Router} from "@angular/router";
import { concatMap } from 'rxjs/operators';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {

  user: User;

  constructor( private location: Location,
               private userService: UserService,
               private router: Router) {
    this.user = new User();

  }



  ngOnInit() {

  }
  onSubmit() {
    this.userService.signUp(this.user).pipe(
      concatMap(u => {
        let loginForm = {
          username: this.user.email,
          password: this.user.password,
          remembered: false
        };
        return this.userService.login(loginForm);
      })
    ).subscribe(
      res => {
        this.router.navigate(['/home']);
      },
      error => {
        console.log(error)
      }
    );
  }

}
