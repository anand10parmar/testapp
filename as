    validateUsername(regex: RegExp) : ValidatorFn {
        return ((control: FormControl) => {
            console.log(control.value);
            if(control.value != null && control.value.length > 5) {
               return  regex.test(control.value) ?  null :  {'regexMismatch' : true}
            } else {
                return {'invalidUsernameSize' : true}
            }
        })
        
    }
