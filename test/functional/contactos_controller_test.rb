require 'test_helper'

class ContactosControllerTest < ActionController::TestCase
  setup do
    @contacto = contactos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contactos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contacto" do
    assert_difference('Contacto.count') do
      post :create, contacto: { Edo_Civil: @contacto.Edo_Civil, ciudad: @contacto.ciudad, colonia: @contacto.colonia, domicilio: @contacto.domicilio, edad: @contacto.edad, email: @contacto.email, fecha_alta: @contacto.fecha_alta, foto: @contacto.foto, matricula: @contacto.matricula, motivo_consulta: @contacto.motivo_consulta, nombre: @contacto.nombre, sexo: @contacto.sexo, telefono: @contacto.telefono }
    end

    assert_redirected_to contacto_path(assigns(:contacto))
  end

  test "should show contacto" do
    get :show, id: @contacto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contacto
    assert_response :success
  end

  test "should update contacto" do
    put :update, id: @contacto, contacto: { Edo_Civil: @contacto.Edo_Civil, ciudad: @contacto.ciudad, colonia: @contacto.colonia, domicilio: @contacto.domicilio, edad: @contacto.edad, email: @contacto.email, fecha_alta: @contacto.fecha_alta, foto: @contacto.foto, matricula: @contacto.matricula, motivo_consulta: @contacto.motivo_consulta, nombre: @contacto.nombre, sexo: @contacto.sexo, telefono: @contacto.telefono }
    assert_redirected_to contacto_path(assigns(:contacto))
  end

  test "should destroy contacto" do
    assert_difference('Contacto.count', -1) do
      delete :destroy, id: @contacto
    end

    assert_redirected_to contactos_path
  end
end
