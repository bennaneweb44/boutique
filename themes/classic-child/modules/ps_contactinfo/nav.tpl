{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<div id="_desktop_contact_link">
  <div id="contact-link">
    {if $contact_infos.phone}    
        <div class="icon">
          
          <a href="tel:{$contact_infos.phone}">
            <i class="material-icons">&#xE0CD;</i>
            {$contact_infos.phone}
          </a>
          
          <a style="float: left; margin-right: 10px" href="{$urls.pages.contact}">
            <i class="material-icons"></i> Contact
          </a>

        </div>
    {else}
      <a href="{$urls.pages.contact}">
        <div class="icon"><i class="material-icons">&#xE0CD;</i></div> Contact
      </a>
    {/if}
  </div>
</div>

<style>
@media (max-width: 640px) {
  /* CSS mobile ici */
  
  #contact-link {
    margin: 0 40px 50px 40px;
  }
  .icon {
    text-align: center;
  }
}
</style>
