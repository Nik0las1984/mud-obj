(function() {
  describe("store plugin tests", function() {
    var storage, textarea;
    textarea = null;
    storage = null;
    beforeEach(function() {
      var fixtures;
      fixtures = jasmine.getFixtures();
      fixtures.fixturesPath = 'base/test/fixtures/';
      loadFixtures('store.html');
      localStorage.clear();
      textarea = $('#my-fixture').store('unique-id');
      return storage = textarea.data('plugin_store');
    });
    it("doesnt break selector chaining", function() {
      return expect(textarea).toEqual($('#my-fixture'));
    });
    it("loads previous stored value", function() {
      localStorage['unique-id'] = "text";
      textarea = $('#my-fixture-2').store('unique-id');
      return expect(textarea).toHaveValue("text");
    });
    it("updates the field on storage change", function() {
      localStorage['unique-id'] = "text";
      $(window).trigger("storage");
      return expect(textarea).toHaveValue("text");
    });
    it("saves value to localStorage on input", function() {
      textarea.val("foobar");
      textarea.trigger('input');
      return expect(localStorage['unique-id']).toEqual("foobar");
    });
    it("wont (re)update the field on input", function() {
      spyOn(storage, 'updateField');
      textarea.trigger('input');
      return expect(storage.updateField.calls.count()).toEqual(0);
    });
    return it("gets cleared on submit", function() {
      var $form, submitCallback;
      localStorage['unique-id'] = "foo";
      submitCallback = jasmine.createSpy('submitCallback').and.returnValue(false);
      $form = $('form');
      $form.on('submit', submitCallback);
      $form.trigger("submit");
      expect('unique-id' in localStorage).toBe(false);
      return expect(submitCallback).toHaveBeenCalled();
    });
  });

}).call(this);

//# sourceMappingURL=store-spec.js.map
