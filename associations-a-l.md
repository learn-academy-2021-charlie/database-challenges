
```
$ rails g model Owner name:string address:string
$ rails g model CreditCard number:integer expiration_date:string owner_id:integer
$ rails db:migrate
```

Edit the files: 
app > models > credit_card.rb
app > models > owner.rb

```
class Owner < ApplicationRecord
    has_many :credit_cards
end

class CreditCard < ApplicationRecord
    belongs_to :owner
end
```

```
> lauralyn = Owner.first
> lauralyn.credit_cards.create number: 123456, expiration_date: '08/2
4'
```

* Stretch Challenge

* Add a credit limit to each card

$ rails g migration AddCreditLimitToCreditCard

Add to the migration class that was created:
    add_column :credit_cards, :credit_limit, :integer

$ rails db:migrate

* Find the total credit extended to the owner with multiple credit cards

```
> first_person = Owner.first
> persons_ccs = first_person.credit_cards
> persons_ccs.sum(:credit_limit)
```