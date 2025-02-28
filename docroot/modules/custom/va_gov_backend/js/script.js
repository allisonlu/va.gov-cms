/**
* DO NOT EDIT THIS FILE.
* See the following change record for more information,
* https://www.drupal.org/node/2815083
* @preserve
**/

(function ($, Drupal) {
  Drupal.behaviors.fieldGroupDetailsWithImageValidation = {
    attach: function attach(context) {
      function fieldsetHandler() {
        $(this).attr("open", "");
      }

      $(".field-group-detailswithimage :input", context).each(function invalidInput() {
        var fieldGroupInput = $(this);
        this.addEventListener("invalid", function c(e) {
          $(e.target).parents("details:not([open])").each(fieldsetHandler);
        }, false);

        if (fieldGroupInput.hasClass("error")) {
          fieldGroupInput.parents("details:not([open])").each(fieldsetHandler);
        }
      });
    }
  };

  Drupal.behaviors.vastDataNodeOutputManipulation = {
    attach: function attach(context) {
      if (context.querySelectorAll(".admin-help-email-tpl").length) {
        var emailLinks = context.querySelectorAll(".admin-help-email-tpl");

        var facilityID = context.querySelector(".field--name-field-facility-locator-api-id .field__item") ? context.querySelector(".field--name-field-facility-locator-api-id .field__item").textContent : context.querySelector(".form-item-field-facility-locator-api-id-0-value input").value;

        var facilityName = context.querySelector(".breadcrumb li:last-child") !== null ? context.querySelector(".breadcrumb li:last-child").textContent.trim() : "";

        emailLinks.forEach(function (emailLink) {
          var eHref = emailLink.href;
          emailLink.setAttribute("href", eHref.replace("[js_entry_facility_name]", facilityName).replace("[js_entry_facility_name]", facilityName).replace("[js_entry_facility_id]", facilityID));
        });

        var adminRoles = ["content_admin", "administrator"];
        var targetTypes = ["health_care_local_facility"];

        if (drupalSettings.gtm_data.contentType && targetTypes.some(function (item) {
          return drupalSettings.gtm_data.contentType.includes(item);
        }) && !adminRoles.some(function (item) {
          return drupalSettings.gtm_data.userRoles.includes(item);
        })) {
          var targetFieldGroup = context.querySelector(".node__content > .not-editable.tooltip-layout");

          var facilityDataFieldGroup = context.createElement("div");

          var legend = context.createElement("h3");
          legend.style.fontFamily = "Lucida Grande, Lucida Sans Unicode, DejaVu Sans, Lucida Sans, sans-serif";
          legend.style.fontSize = "1rem";
          legend.innerHTML = "FACILITY DATA";

          var label = context.createElement("div");
          label.classList.add("field__label");
          label.innerHTML = "Name of facility";

          var fieldItem = context.createElement("div");
          var description = context.querySelector("#locations-and-contact-information .tooltip-layout .description");
          fieldItem.classList.add("field__item");
          fieldItem.innerHTML = facilityName;

          targetFieldGroup.insertBefore(fieldItem, targetFieldGroup.firstChild);

          targetFieldGroup.insertBefore(label, targetFieldGroup.firstChild);

          targetFieldGroup.insertBefore(description, targetFieldGroup.firstChild);

          targetFieldGroup.insertBefore(legend, targetFieldGroup.firstChild);

          targetFieldGroup.appendChild(facilityDataFieldGroup);

          var topOfPage = context.querySelector("#top-of-page-information .tooltip-layout");
          var topOfPageHelp = context.getElementById("top-get-help-email");
          topOfPage.insertBefore(topOfPageHelp, topOfPage.firstChild);
        }
      }
    }
  };

  Drupal.behaviors.vaGovClpLimitListOfLinks = {
    attach: function attach() {
      if ($("#field-clp-spotlight-link-teasers-add-more-wrapper .paragraphs-dropbutton-wrapper").length > 3) {
        $("#field-clp-spotlight-link-teasers-add-more-wrapper .field-add-more-submit.button--small.button").css("display", "none");
      }
    }
  };

  Drupal.behaviors.vaGovServiceLocationRemoveButton = {
    attach: function attach() {
      var removeButtons = document.querySelectorAll('.field--name-field-service-location .paragraphs-dropbutton-wrapper input[value="Remove"]');

      if (removeButtons.length > 0) {
        removeButtons.forEach(function (button, i) {
          if (i < 1) {
            button.style.display = "none";
          }
        });
      }
    }
  };

  Drupal.behaviors.vaGovAlertSingleComponent = {
    attach: function attach() {
      var reusableAlertRemovedIds = [];
      var reusableAlertAddedIds = [];
      var nonReusableAlertAddedIds = [];
      var nonReusableAlertSelectionIds = [];

      $('input[id*="subform-field-alert-block-reference-entity-browser-entity-browser-open-modal"]').each(function (idx, element) {
        reusableAlertRemovedIds.push($(element).attr("id"));
      });

      $('div[id*="field-alert-block-reference-current-items-0"]').each(function (idx, element) {
        reusableAlertAddedIds.push($(element).attr("id"));
      });

      $('fieldset[id*="subform-group-n"]').each(function (idx, element) {
        nonReusableAlertAddedIds.push($(element).attr("id"));
      });

      $.each(reusableAlertRemovedIds, function (key, value) {
        var y = $("#" + value).parents(".paragraphs-subform").children(".field--name-field-alert-selection").find(".fieldset-wrapper").children().attr("id");
        $("#" + y + "> div > input").each(function (idx, element) {
          $(element).prop("disabled", false);
        });
      });

      $.each(reusableAlertAddedIds, function (key, value) {
        var x = $("#" + value).parents(".paragraphs-subform").children(".field--name-field-alert-selection").find(".fieldset-wrapper").children().attr("id");

        $("#" + x + "> div > input").each(function (idx, element) {
          $(element).prop("disabled", true);
        });
      });

      $.each(nonReusableAlertAddedIds, function (key, value) {
        nonReusableAlertSelectionIds.push($("#" + value).closest("div[id*='subform-field-alert-wrapper'],div[id*='alert-single-wrapper']").find(".paragraphs-subform").first().children(".field--name-field-alert-selection").children().children(".fieldset-wrapper").children().attr("id"));

        $.each(nonReusableAlertSelectionIds, function (sectionKey, sectionValue) {
          $("#" + sectionValue + "> div > input").each(function (idx, element) {
            $(element).prop("disabled", true);
          });
        });
      });
    }
  };

  Drupal.behaviors.vaGovRequiredParagraphs = {
    attach: function attach() {
      $("details#edit-field-clp-resources summary").addClass("js-form-required form-required");
      $("details#edit-field-clp-events-references summary").addClass("js-form-required form-required");
      $("details#edit-group-video .field--type-entity-reference.field--name-field-media span.fieldset-legend").addClass("js-form-required form-required");
      $("#edit-field-clp-stories-teasers-wrapper").attr({
        required: "required",
        "aria-required": "true"
      });
      $("#edit-field-clp-stories-teasers-wrapper strong").addClass("form-required");
    }
  };

  Drupal.behaviors.vaGovStandaloneQABehaviors = {
    attach: function attach() {
      var addMoreLinks = document.getElementById("field-related-information-link-teaser-add-more");
      var linkCount = document.querySelectorAll(".paragraph-type--link-teaser").length;
      if (addMoreLinks && linkCount < 1) {
        addMoreLinks.dispatchEvent(new MouseEvent("click"));
      }
    }
  };
})(jQuery, window.Drupal);