<div class="row">
  <div class="col-xs-12">
    <div class="payment_module" style="border: 1px solid #d6d4d4; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; padding-left: 15px; padding-right: 15px; background: #fbfbfb;">
      <form action="#" id="stripe-payment-form">
        {* Classic Credit card form *}
        <input type="hidden" id="stripe-incorrect_number" value="{l s='The card number is incorrect.' mod='stripe_official'}">
        <input type="hidden" id="stripe-invalid_number" value="{l s='The card number is not a valid credit card number.' mod='stripe_official'}">
        <input type="hidden" id="stripe-invalid_expiry_month" value="{l s='The card\'s expiration month is invalid.' mod='stripe_official'}">
        <input type="hidden" id="stripe-invalid_expiry_year" value="{l s='The card\'s expiration year is invalid.' mod='stripe_official'}">
        <input type="hidden" id="stripe-invalid_cvc" value="{l s='The card\'s security code is invalid.' mod='stripe_official'}">
        <input type="hidden" id="stripe-expired_card" value="{l s='The card has expired.' mod='stripe_official'}">
        <input type="hidden" id="stripe-incorrect_cvc" value="{l s='The card\'s security code is incorrect.' mod='stripe_official'}">
        <input type="hidden" id="stripe-incorrect_zip" value="{l s='The card\'s zip code failed validation.' mod='stripe_official'}">
        <input type="hidden" id="stripe-card_declined" value="{l s='The card was declined.' mod='stripe_official'}">
        <input type="hidden" id="stripe-missing" value="{l s='There is no card on a customer that is being charged.' mod='stripe_official'}">
        <input type="hidden" id="stripe-processing_error" value="{l s='An error occurred while processing the car.' mod='stripe_official'}">
        <input type="hidden" id="stripe-rate_limit" value="{l s='An error occurred due to requests hitting the API too quickly. Please let us know if you\'re consistently running into this error.' mod='stripe_official'}">
        <input type="hidden" id="stripe-3d_declined" value="{l s='The card doesn\'t support 3DS.' mod='stripe_official'}">
        <input type="hidden" id="stripe-no_api_key" value="{l s='There\'s an error with your API keys. If you\'re the administrator of this website, please go on the "Connection" tab of your plugin.' mod='stripe_official'}">
        <div id="stripe-ajax-loader"><img src="{$module_dir}views/img/ajax-loader.gif" alt="" />; {l s='Transaction in progress, please wait.' mod='stripe_official'}</div>
        <h3 class="stripe_title">{l s='Pay by card' mod='stripe_official'}</h3>
        <div class="stripe-payment-errors">{if isset($smarty.get.stripe_error)}{$smarty.get.stripe_error|escape:'htmlall':'UTF-8'}{/if}</div>
        <a name="stripe_error" style="display:none"></a>
        <input type="hidden" id="stripe-publishable-key" value="{$publishableKey|escape:'htmlall':'UTF-8'}"/>
        <div>
          <label>{l s='Cardholder\'s Name' mod='stripe_official'}</label>  <label class="required"> </label><br />
          <input type="text"  autocomplete="off" class="stripe-name" data-stripe="name" value="{$customer_name|escape:'htmlall':'UTF-8'}"/>
        </div>
        <div>
          <label>{l s='Card Number' mod='stripe_official'}</label>  <label class="required"> </label><br />
          <input type="text" size="20" autocomplete="off" class="stripe-card-number" id="card_number" data-stripe="number" placeholder="&#9679;&#9679;&#9679;&#9679; &#9679;&#9679;&#9679;&#9679; &#9679;&#9679;&#9679;&#9679; &#9679;&#9679;&#9679;&#9679;"/>
        </div>
        <div class="block-left">
          <label>{l s='Expiry date' mod='stripe_official'}</label>  <label class="required"> </label><br />
          <input type="text" size="7" autocomplete="off" id="card_expiry" class="stripe-card-expiry" maxlength = 5 placeholder="MM/YY"/>
        </div>
        <div>
          <label>{l s='CVC/CVV' mod='stripe_official'}</label>  <label class="required"> </label><br />
          <input type="text" size="7" autocomplete="off" data-stripe="cvc" class="stripe-card-cvc" placeholder="&#9679;&#9679;&#9679;"/>
          <a href="javascript:void(0)" class="stripe-card-cvc-info" style="border: none;">
            <div class="cvc-info">
              {l s='The CVC (Card Validation Code) is a 3 or 4 digit code on the reverse side of Visa, MasterCard and Discover cards and on the front of American Express cards.' mod='stripe_official'}
            </div>
          </a>
        </div>
        <div class="clear"></div>
        <img class="powered_stripe" alt="" src="{$module_dir|escape:'htmlall':'UTF-8'}views/img/powered_by_stripe.png"/>
      </form>
    </div>
  </div>
</div>
<div id="modal_stripe"  class="modal" style="display: none">
  <div id="result_3d"> </div></div>
{if isset($ps_version17)}
  <script type="text/javascript" src="https://js.stripe.com/v2/"></script>
  <link rel="stylesheet" href="{$module_dir|escape:'htmlall':'UTF-8'}views/css/front.css" type="text/css" media="all">
{/if}
<script type="text/javascript" async defer src="{$module_dir|escape:'htmlall':'UTF-8'}views/js/payment_stripe.js"></script>
<script type="text/javascript" async defer src="{$module_dir|escape:'htmlall':'UTF-8'}views/js/jquery.the-modal.js"></script>
<link rel="stylesheet" href="{$module_dir|escape:'htmlall':'UTF-8'}views/css/the-modal.css" type="text/css" media="all">
<script type="text/javascript">
  var mode = {$stripe_mode|escape:'htmlall':'UTF-8'};
  var ps_version = {$ps_version15|escape:'htmlall':'UTF-8'};
  var ps_version17 = {$ps_version17|escape:'htmlall':'UTF-8'};
  var currency = "{$currency|escape:'htmlall':'UTF-8'}";
  var amount_ttl = {$amount_ttl|escape:'htmlall':'UTF-8'};
  var secure_mode = {$secure_mode|escape:'htmlall':'UTF-8'};
  if (ps_version || ps_version17) {
    var baseDir = "{$baseDir|escape:'htmlall':'UTF-8'}";
  }

  {literal}

</script>
{/literal}