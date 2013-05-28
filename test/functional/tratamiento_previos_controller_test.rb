require 'test_helper'

class TratamientoPreviosControllerTest < ActionController::TestCase
  setup do
    @tratamiento_previo = tratamiento_previos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tratamiento_previos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tratamiento_previo" do
    assert_difference('TratamientoPrevio.count') do
      post :create, tratamiento_previo: { circunstancias_consultas: @tratamiento_previo.circunstancias_consultas, internamiento: @tratamiento_previo.internamiento, matricula: @tratamiento_previo.matricula, medicacion: @tratamiento_previo.medicacion, motivo: @tratamiento_previo.motivo, otros_servicios: @tratamiento_previo.otros_servicios, psicoterapia: @tratamiento_previo.psicoterapia }
    end

    assert_redirected_to tratamiento_previo_path(assigns(:tratamiento_previo))
  end

  test "should show tratamiento_previo" do
    get :show, id: @tratamiento_previo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tratamiento_previo
    assert_response :success
  end

  test "should update tratamiento_previo" do
    put :update, id: @tratamiento_previo, tratamiento_previo: { circunstancias_consultas: @tratamiento_previo.circunstancias_consultas, internamiento: @tratamiento_previo.internamiento, matricula: @tratamiento_previo.matricula, medicacion: @tratamiento_previo.medicacion, motivo: @tratamiento_previo.motivo, otros_servicios: @tratamiento_previo.otros_servicios, psicoterapia: @tratamiento_previo.psicoterapia }
    assert_redirected_to tratamiento_previo_path(assigns(:tratamiento_previo))
  end

  test "should destroy tratamiento_previo" do
    assert_difference('TratamientoPrevio.count', -1) do
      delete :destroy, id: @tratamiento_previo
    end

    assert_redirected_to tratamiento_previos_path
  end
end
